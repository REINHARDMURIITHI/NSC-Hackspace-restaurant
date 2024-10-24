
class MenuItem extends StatelessWidget {
  final String name;
  final double price;
  final Function onTap;

  MenuItem({required this.name, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(name),
        subtitle: Text("\$${price.toStringAsFixed(2)}"),
        trailing: Icon(Icons.add),
        onTap: () => onTap(),
      ),
    );
  }
}