const String getListDonorsSubscription = ''' 
subscription {
   donates(order_by: {value: desc}) {
    id
    donor_name
  }
}
''';
