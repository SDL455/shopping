import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerProfileScreen extends StatefulWidget {
  const CustomerProfileScreen({Key? key}) : super(key: key);

  @override
  State<CustomerProfileScreen> createState() => _CustomerProfileScreenState();
}

class _CustomerProfileScreenState extends State<CustomerProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isEditing = false;

  // Sample user data - in real app, this would come from a service
  String _fullName = "ທ. ສົມສະໄໝ ສົມສະໄໝ";
  String _email = "somchai@example.com";
  String _phone = "+856 20 1234 5678";
  String _address = "ບ້ານ ສົມສະໄໝ, ເມືອງ ສົມສະໄໝ, ນະຄອນຫຼວງວຽງຈັນ";
  String _birthDate = "15/03/1990";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'ໂປຣໄຟລ໌',
          style: GoogleFonts.notoSansLao(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFFF6B35),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(_isEditing ? Icons.save : Icons.edit),
            onPressed: () {
              setState(() {
                if (_isEditing) {
                  // Save changes
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'ບັນທຶກຂໍ້ມູນສຳເລັບແລ້ວ',
                          style: GoogleFonts.notoSansLao(),
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                }
                _isEditing = !_isEditing;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header Section
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFFF6B35),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  // Profile Picture
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.white,
                          child: const Icon(
                            Icons.person,
                            size: 60,
                            color: Color(0xFFFF6B35),
                          ),
                        ),
                      ),
                      if (_isEditing)
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              size: 20,
                              color: Color(0xFFFF6B35),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    _fullName,
                    style: GoogleFonts.notoSansLao(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'ລູກຄ້າ',
                    style: GoogleFonts.notoSansLao(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            // Profile Information Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ຂໍ້ມູນສ່ວນຕົວ',
                      style: GoogleFonts.notoSansLao(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Full Name
                    _buildInfoField(
                      label: 'ຊື່ ແລະ ນາມສະກຸນ',
                      value: _fullName,
                      icon: Icons.person,
                      onChanged: (value) => _fullName = value,
                    ),

                    // Email
                    _buildInfoField(
                      label: 'ອີເມວ',
                      value: _email,
                      icon: Icons.email,
                      onChanged: (value) => _email = value,
                    ),

                    // Phone
                    _buildInfoField(
                      label: 'ເບີໂທລະສັບ',
                      value: _phone,
                      icon: Icons.phone,
                      onChanged: (value) => _phone = value,
                    ),

                    // Address
                    _buildInfoField(
                      label: 'ທີ່ຢູ່',
                      value: _address,
                      icon: Icons.location_on,
                      onChanged: (value) => _address = value,
                      maxLines: 3,
                    ),

                    // Birth Date
                    _buildInfoField(
                      label: 'ວັນເດືອນປີເກີດ',
                      value: _birthDate,
                      icon: Icons.calendar_today,
                      onChanged: (value) => _birthDate = value,
                    ),

                    const SizedBox(height: 30),

                    // Account Settings Section
                    Text(
                      'ການຕັ້ງຄ່າບັນຊີ',
                      style: GoogleFonts.notoSansLao(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Settings Options
                    _buildSettingsOption(
                      icon: Icons.lock,
                      title: 'ປ່ຽນລະຫັດຜ່ານ',
                      subtitle: 'ອັບເດດລະຫັດຜ່ານຂອງທ່ານ',
                      onTap: () {
                        // Navigate to change password screen
                      },
                    ),

                    _buildSettingsOption(
                      icon: Icons.notifications,
                      title: 'ການແຈ້ງເຕືອນ',
                      subtitle: 'ຈັດການການແຈ້ງເຕືອນ',
                      onTap: () {
                        // Navigate to notification settings
                      },
                    ),

                    _buildSettingsOption(
                      icon: Icons.security,
                      title: 'ຄວາມປອດໄພ',
                      subtitle: 'ການຕັ້ງຄ່າຄວາມປອດໄພ',
                      onTap: () {
                        // Navigate to security settings
                      },
                    ),

                    _buildSettingsOption(
                      icon: Icons.help,
                      title: 'ຄວາມຊ່ວຍເຫຼືອ',
                      subtitle: 'ຄຳຖາມທີ່ຖືກຖາມບ່ອນ',
                      onTap: () {
                        // Navigate to help screen
                      },
                    ),

                    const SizedBox(height: 30),

                    // Logout Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle logout
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(
                                'ອອກຈາກລະບົບ',
                                style: GoogleFonts.notoSansLao(),
                              ),
                              content: Text(
                                'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການອອກຈາກລະບົບ?',
                                style: GoogleFonts.notoSansLao(),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    'ຍົກເລີກ',
                                    style: GoogleFonts.notoSansLao(),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    // Handle logout logic
                                  },
                                  child: Text(
                                    'ອອກຈາກລະບົບ',
                                    style: GoogleFonts.notoSansLao(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'ອອກຈາກລະບົບ',
                          style: GoogleFonts.notoSansLao(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoField({
    required String label,
    required String value,
    required IconData icon,
    required Function(String) onChanged,
    int maxLines = 1,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.notoSansLao(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey[300]!),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                Icon(icon, color: const Color(0xFFFF6B35), size: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: _isEditing
                      ? TextFormField(
                          initialValue: value,
                          onChanged: onChanged,
                          style: GoogleFonts.notoSansLao(
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                          maxLines: maxLines,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'ປ້ອນ $label',
                            hintStyle: GoogleFonts.notoSansLao(
                              color: Colors.grey[400],
                            ),
                          ),
                        )
                      : Text(
                          value,
                          style: GoogleFonts.notoSansLao(
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey[300]!),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6B35).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: const Color(0xFFFF6B35), size: 20),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.notoSansLao(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: GoogleFonts.notoSansLao(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
