import 'package:boards/boards.dart';
import 'package:boards/components/board.dart';
import 'package:boards/models/board_info.dart';
import 'package:boards/models/hand_positioning.dart';
import 'package:boards/types.dart';
import 'package:flutter/material.dart';
import 'package:boards/models/board_overlay.dart';

class BoardFormField extends FormField<BoardType> {

  BoardFormField({
    final Function(BoardType) onChanged,
    final Function() handPosition,
    FormFieldSetter<BoardType> onSaved,
    FormFieldValidator<BoardType> validator,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    bool autovalidate = false,
    BuildContext context,
    BoardType initialValue,
  }) : assert(context!=null), super(
    onSaved: onSaved,
    validator: validator,
    initialValue: initialValue,
    builder: (FormFieldState<BoardType> state) {
      BoardType boardType = state.value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<BoardType>(
                value:boardType,
                hint:Text('Select a board'),
                onChanged:(BoardType value) {
                  state.reset();
                  state.didChange(value);
                  if(onChanged!=null) onChanged(value);
                },
                items:boards.map<DropdownMenuItem<BoardType>>((BoardInfo value) {
                  return DropdownMenuItem<BoardType>(
                    value:value.type,
                    child:Text('${value.displayName}'),
                  );
                }).toList(),
              ),
            ),
          ),
          Visibility(
            visible:boardType!=null,
            child:Board.fromType(boardType, overlay:BoardOverlay.fromHandPositioning(handPosition()))
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