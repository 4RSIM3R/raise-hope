enum OrganizationType {
  nonProfitOrganization,
  communityGroup,
  schoolOrEducationalInstitution,
  governmentAgency,
  religiousOrganization,
  healthOrMedicalInstitution,
  artsAndCulturalOrganization,
  environmentalOrganization,
  animalWelfareOrganization,
  socialEnterpriseOrBusinessWithASocialMission,
}

String kGetOrganizationTypeName(OrganizationType type) {
  final names = {
    OrganizationType.nonProfitOrganization: 'Non-profit organization',
    OrganizationType.communityGroup: 'Community group',
    OrganizationType.schoolOrEducationalInstitution:
        'School or educational institution',
    OrganizationType.governmentAgency: 'Government agency',
    OrganizationType.religiousOrganization: 'Religious organization',
    OrganizationType.healthOrMedicalInstitution:
        'Health or medical institution',
    OrganizationType.artsAndCulturalOrganization:
        'Arts and cultural organization',
    OrganizationType.environmentalOrganization: 'Environmental organization',
    OrganizationType.animalWelfareOrganization: 'Animal welfare organization',
    OrganizationType.socialEnterpriseOrBusinessWithASocialMission:
        'Social enterprise or business with a social mission',
  };

  return names[type]!;
}
