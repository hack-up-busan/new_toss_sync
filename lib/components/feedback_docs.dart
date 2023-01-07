import 'package:flutter/material.dart';
import 'constants.dart';

class SendOpinion extends StatelessWidget {
  const SendOpinion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomContainerColour,
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 5.0, 5.0),
      child: ListTile(
        onTap: () {},
        leading: Icon(
          Icons.email_rounded,
          color: Colors.blue[400],
          size: 40.0,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2.0),
          child: Text(
            '지금까지 토스증권 어땠나요?',
            style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
        subtitle: Text(
          '의견 보내기',
          style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.grey[700],
          size: 15.0,
        ),
      ),
    );
  }
}

class Docs extends StatelessWidget {
  const Docs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
      color: kBottomContainerColour,
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10.0, 1.0, 3.0, 0.0),
                child: CircleAvatar(
                    radius: 10.0,
                    backgroundImage: AssetImage('assets/images/toss.png')),
              ),
              Text(
                '토스증권',
                style: TextStyle(
                    color: kBottomContainerTextColour,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '토스증권에서 제공하는 투자 정보는 고객의 투자 판단을 위해 단순',
                style: TextStyle(
                  color: kBottomContainerTextColour,
                  fontSize: 12.0,
                ),
              ),
              Text(
                '참고용일뿐, 투자 제안 및 권유 종목 추천을 위해 작성된 것이 아닙니다.',
                style: TextStyle(
                    color: kBottomContainerTextColour, fontSize: 12.0),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 10.0,
                  ),
                  CautiousInfo('고객센터'),
                  CautiousInfo('투자 유의 사항'),
                  CautiousInfo('개인정보처리방침'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 20.0,
                  ),
                  CautiousInfo('이용자권리 및 유의사항'),
                  CautiousInfo('신용정보 활용체제'),
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: kNoticeText,
            iconColor: Colors.grey[600],
            collapsedIconColor: Colors.grey,
            children: const [
              NoticeTile(
                inFo:
                    ' \u2022 당사는 금융투자상품에 관하여 충분히 설명할 의무가 있으며, 투자자는 투자에 앞서 당사의 설명을 들으시기 바랍니다.',
              ),
              NoticeTile(
                inFo: ' \u2022 금융투자상품은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.',
              ),
              NoticeTile(
                inFo: ' \u2022 금융투자상품은 원금손실이 발생할 수 있으며, 그 손실은 투자자에게 귀속됩니다.',
              ),
              NoticeTile(
                inFo:
                    ' \u2022 국내주식거래수수료는 0.015%이며, 기타 수수료에 관한사항은 홈페이지 등을 참조하시기 바랍니다.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NoticeTile extends StatelessWidget {
  final String inFo;

  const NoticeTile({super.key, required this.inFo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        inFo,
        style: kNoticeTileTextStyle,
      ),
    );
  }
}

class CautiousInfo extends StatelessWidget {
  final String info;
  const CautiousInfo(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.0,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(3.0),
        ),
        onPressed: () {},
        child: Text(
          info,
          style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
            color: kBottomContainerTextColour,
          ),
        ),
      ),
    );
  }
}
