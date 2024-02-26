import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  final String? title;
  final String content;
  final String? subContent;

  final String? okText;
  final String? cancelText;

  final VoidCallback? onOk;
  final VoidCallback? onCancel;

  final bool hideCancelButton;
  final bool blockBack;
  final bool expandOkButton;

  const ConfirmationDialog({
    super.key,
    this.title,
    required this.content,
    this.subContent,
    this.okText,
    this.onCancel,
    this.onOk,
    this.cancelText,
    this.hideCancelButton = false,
    this.blockBack = false,
    this.expandOkButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        children: [
          if (title != null)
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Text(
                title!,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (subContent != null && subContent!.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              subContent!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.blue,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!hideCancelButton) ...[
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey,
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Cancelar'),
                    onPressed: () {
                      Navigator.pop(context);

                      onCancel?.call();
                    },
                  ),
                ),
                const SizedBox(width: 8),
              ],
              Expanded(
                flex: expandOkButton ? 2 : 1,
                child: ElevatedButton(
                  child: const Text('Guardar'),
                  onPressed: () {
                    Navigator.pop(context);

                    onOk?.call();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
