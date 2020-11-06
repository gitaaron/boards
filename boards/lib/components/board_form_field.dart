import 'package:boards/components/board.dart';
import 'package:boards/models/board_info.dart';
import 'package:boards/models/board_type.dart';
import 'package:boards/models/boards_map.dart';
import 'package:flutter/material.dart';
import 'package:boards/models/board_overlay.dart';

class BoardFormField extends FormField<BoardInfo> {
  final BoardsMap boardsMap;
  final Widget action;
  final String baseUrl;
  final bool isRequired;

  BoardFormField(
    this.boardsMap,
    {
      this.action,
      this.baseUrl,
      this.isRequired = false,
      final Function(BoardInfo) onChanged,
      final Function() handPosition,
      FormFieldSetter<BoardInfo> onSaved,
      FormFieldValidator<BoardInfo> validator,
      AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
      bool autovalidate = false,
      BuildContext context,
      BoardInfo initialValue,
  }) : assert(context!=null), super(
    onSaved: onSaved,
    validator: validator,
    initialValue: initialValue,
    builder: (FormFieldState<BoardInfo> state) {
      BoardInfo boardInfo = state.value;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              DropdownButtonHideUnderline(
                child: ButtonTheme(
                  child: DropdownButton<BoardInfo>(
                    value:boardInfo,
                    hint:Row(
                      children: [
                        Text('Select a board'),
                        SizedBox(width:5.0),
                        Text(isRequired?'(required)':'(optional)', style:Theme.of(context).textTheme.caption),
                      ],
                    ),
                    onChanged:(BoardInfo value) {
                      state.reset();
                      state.didChange(value);
                      if(onChanged!=null) onChanged(value);
                    },
                    items:boardsMap.boards.map<DropdownMenuItem<BoardInfo>>((BoardInfo value) {
                      return DropdownMenuItem<BoardInfo>(
                        value:value,
                        child:Text('${value.displayName}'),
                      );
                    }).toList(),
                  ),
                ),
              ),
              action!=null?Expanded(child: Align(alignment:Alignment.centerRight, child: action)):Container(),
            ],
          ),
          Visibility(
            visible:boardInfo!=null,
            child:boardInfo!=null?Board.fromInfo(boardInfo, overlay:BoardOverlay.fromHandPositioning(handPosition()), baseUrl:baseUrl):Container(),
          ),
          state.hasError?
          Text(
            state.errorText,
            style: Theme.of(context).textTheme.caption.merge(
              TextStyle(color: Colors.red),
            ),
          ) :
          Container(),
        ],
      );
    }
  );
}