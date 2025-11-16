import 'package:adv_basics/models/question_model.dart';

const questions = [
  QuestionModel('Quels sont les principaux blocs de construction des interfaces Flutter ?', [
    'Widgets',
    'Composants',
    'Blocs',
    'Fonctions',
  ]),
  QuestionModel('Comment les interfaces Flutter sont-elles construites ?', [
    'En combinant des widgets dans le code',
    'En combinant des widgets dans un éditeur visuel',
    'En définissant des widgets dans des fichiers de configuration',
    'En utilisant XCode pour iOS et Android Studio pour Android',
  ]),
  QuestionModel('Quel est le but d’un StatefulWidget ?', [
    'Mettre à jour l’UI lorsque les données changent',
    'Mettre à jour les données lorsque l’UI change',
    'Ignorer les changements de données',
    'Afficher une UI qui ne dépend pas des données',
  ]),
  QuestionModel(
    'Quel widget devriez-vous essayer d’utiliser le plus souvent : StatelessWidget ou StatefulWidget ?',
    ['StatelessWidget', 'StatefulWidget', 'Les deux sont tout aussi bons', 'Aucun des deux'],
  ),
  QuestionModel('Que se passe-t-il si vous changez les données dans un StatelessWidget ?', [
    'L’UI n’est pas mise à jour',
    'L’UI est mise à jour',
    'Le StatefulWidget le plus proche est mis à jour',
    'Tous les StatefulWidgets imbriqués sont mis à jour',
  ]),
  QuestionModel(
    'Comment devez-vous mettre à jour les données à l’intérieur d’un StatefulWidget ?',
    [
      'En appelant setState()',
      'En appelant updateData()',
      'En appelant updateUI()',
      'En appelant updateState()',
    ],
  ),
];
