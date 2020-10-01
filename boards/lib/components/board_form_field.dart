import 'package:boards/boards.dart';
import 'package:boards/components/board.dart';
import 'package:boards/models/board_info.dart';
import 'package:boards/types.dart';
import 'package:flutter/material.dart';

class BoardFormField extends FormField<BoardType> {
  BoardFormField({
    FormFieldSetter<BoardType> onSaved,
    FormFieldValidator<BoardType> validator,
    bool autovalidate = false,
    BuildContext context,
    BoardType initialValue,
  }) : super(
    onSaved: onSaved,
    validator: validator,
    autovalidate: autovalidate,
    initialValue: initialValue,
    builder: (FormFieldState<BoardType> state) {
      BoardType boardType = state.value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButton<BoardType>(
            value:boardType,
            hint:Text('Select a board'),
            onChanged:(BoardType value) {
              state.didChange(value);
            },
            items:boards.map<DropdownMenuItem<BoardType>>((BoardInfo value) {
              return DropdownMenuItem<BoardType>(
                value:value.type,
                child:Text(value.displayName),
              );
            }).toList(),
          ),
          Visibility(
            visible:boardType!=null,
            child:Board.fromType(boardType),
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