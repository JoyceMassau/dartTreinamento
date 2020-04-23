/*
  Mocks são ambientes simulados para não ficarmos suscetíveis à falhas nos testes devido ao ambiente externo (Flacky Tests), como depender da integração com o DAO, etc.
  Há a possibilidade de fazer o teste manualmente, mas usaremos a biblioteca Mockito

    1. Crie este arquivo, estendendo do Mock e da classe que deseja Mockar, no nosso caso, a ContactDao
    
    2. No teste de fluxo, crie uma instância: 
      final mockContactDao = MocksContactDao();

    3. No main, na classe principal fazer uma modificação para que receba o ContactDao: 
      class BytebankApp extends StatelessWidget {
        final ContactDao contactDao;
        ...
      }
    
    3.1. Receber no construtor um parâmetro opcional, mas que desejamos que seja enviado, do Dao
      BytebankApp({@required this.contactDao});

    3.2. Enviar uma instância no método que inicializa o App
      void main() {
        runApp(BytebankApp(contactDao: ContactDao(),));
      }

    4.. No Dashboard, receber como parâmetro o contactDao
      home: Dashboard(),

    4.1. No arquivo Dashboard, enviar para contactsList via construtor
      final ContactDao contactDao;
      Dashboard({@required this.contactDao});
      
    4.2. Quando fazemos a chamada do ContactsList, enviar a instância no builder
      void _showContactsList(BuildContext context) {
        ...
        builder: (context) => ContactsList(contactDao: contactDao),
        ... 
      }

    5. No arquivo Contacts_List modifica o nome da instância de "_dao" para "contactDao"
      final ContactDao contactDao;

    5.1. Cria construtor enviando dependência. Quem está acima, envia dependência para o próximo
      ContactsList({@required this.contactDao});

    6. No arquivo "save_contact_flow" ou "save_contact_test", dependendo de como foi nomeado, enviar o mock do contactDado como uma instância do app
      await tester.pumpWidget(BytebankApp(contactDao: mockContactDao,));
*/

import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:mockito/mockito.dart';

class MocksContactDao extends Mock implements ContactDao {
  
}