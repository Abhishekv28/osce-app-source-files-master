class AllFunctions {
  addItemsinDeleteItemsList(List deleteItemsList, int index) {
    deleteItemsList.add(index);
  }

  removeMultipleItemsFromList(
      List deleteItemsList, List _caseManageAdminForDisplay) {
    for (int i = 0; i < deleteItemsList.length; i++) {
      print(deleteItemsList[i]);
      _caseManageAdminForDisplay.removeAt(deleteItemsList[i]);
    }
  }

  removeSingleItem(List _caseManageAdminForDisplay, int index) {
    _caseManageAdminForDisplay.removeAt(index);
  }

  checkItem(
    int selectedIndex,
    int index,
    bool? value,
    bool? checkedValue1,
  ) {
    selectedIndex = index;
    if (selectedIndex == index) {
      checkedValue1 = value;
    }
  }
}
