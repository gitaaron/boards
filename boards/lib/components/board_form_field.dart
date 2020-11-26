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
  final bool showCaption;
  final bool isRequired;
  final BoardOverlay overlay;

  BoardFormField(
    this.boardsMap,
    {
      this.action,
      this.baseUrl,
      this.isRequired = false,
      this.showCaption = true,
      this.overlay,
      final Function(BoardInfo) onChanged,
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

      List<DropdownMenuItem<String>> items = boardsMap.boards.map<DropdownMenuItem<String>>((BoardInfo value) {
        return DropdownMenuItem<String>(
          value:value.type.uniqueName,
          child:Text('${value.displayName}'),
        );
      }).toList();


      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              DropdownButtonHideUnderline(
                child: ButtonTheme(
                  child: DropdownButton<String>(
                    value:boardInfo?.type?.uniqueName,
                    hint:Row(
                      children: [
                        Text('Select a board'),
                        Visibility(
                          visible:showCaption,
                          child: Row(
                            children: [
                              SizedBox(width:5.0),
                              Text(isRequired?'(required)':'(optional)', style:Theme.of(context).textTheme.caption),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onChanged:(String value) {
                      BoardType _boardType = BoardType(value);
                      BoardInfo _boardInfo = boardsMap.getInfo(_boardType);
                      state.reset();
                      state.didChange(_boardInfo);
                      if(onChanged!=null) onChanged(_boardInfo);
                    },
                    items:items,
                  ),
                ),
              ),
              action!=null?Expanded(child: Align(alignment:Alignment.centerRight, child: action)):Container(),
            ],
          ),
          Visibility(
            visible:boardInfo!=null,
            child:boardInfo!=null?Board.fromInfo(boardInfo, overlay:overlay ?? BoardOverlay([]), baseUrl:baseUrl):Container(),
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