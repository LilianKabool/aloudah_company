class UpdateWarehouseParams {
  final int warehouseId;
  final String? managerAddress;
  final String? address;
  final String? name;
  final String? area;
  final String? phone;

  UpdateWarehouseParams({
    required this.warehouseId,

    this.managerAddress,
    this.address,
    this.name,
    this.area,
    this.phone,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {'warehouse_id': warehouseId};

    if (managerAddress != null) data['manager_address'] = managerAddress;
    if (address != null) data['address'] = address;
    if (name != null) data['name'] = name;
    if (area != null) data['area'] = area;
    if (phone != null) data['phone'] = phone;
    return data;
  }
}
