// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_representation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRepresentation extends UserRepresentation {
  @override
  final String? id;
  @override
  final String? username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final bool? emailVerified;
  @override
  final BuiltMap<String, BuiltList<String>>? attributes;
  @override
  final UserProfileMetadata? userProfileMetadata;
  @override
  final String? self;
  @override
  final String? origin;
  @override
  final int? createdTimestamp;
  @override
  final bool? enabled;
  @override
  final bool? totp;
  @override
  final String? federationLink;
  @override
  final String? serviceAccountClientId;
  @override
  final BuiltList<CredentialRepresentation>? credentials;
  @override
  final BuiltSet<String>? disableableCredentialTypes;
  @override
  final BuiltList<String>? requiredActions;
  @override
  final BuiltList<FederatedIdentityRepresentation>? federatedIdentities;
  @override
  final BuiltList<String>? realmRoles;
  @override
  final BuiltMap<String, BuiltList<String>>? clientRoles;
  @override
  final BuiltList<UserConsentRepresentation>? clientConsents;
  @override
  final int? notBefore;
  @override
  final BuiltMap<String, BuiltList<String>>? applicationRoles;
  @override
  final BuiltList<SocialLinkRepresentation>? socialLinks;
  @override
  final BuiltList<String>? groups;
  @override
  final BuiltMap<String, bool>? access;

  factory _$UserRepresentation([
    void Function(UserRepresentationBuilder)? updates,
  ]) => (UserRepresentationBuilder()..update(updates))._build();

  _$UserRepresentation._({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.emailVerified,
    this.attributes,
    this.userProfileMetadata,
    this.self,
    this.origin,
    this.createdTimestamp,
    this.enabled,
    this.totp,
    this.federationLink,
    this.serviceAccountClientId,
    this.credentials,
    this.disableableCredentialTypes,
    this.requiredActions,
    this.federatedIdentities,
    this.realmRoles,
    this.clientRoles,
    this.clientConsents,
    this.notBefore,
    this.applicationRoles,
    this.socialLinks,
    this.groups,
    this.access,
  }) : super._();
  @override
  UserRepresentation rebuild(
    void Function(UserRepresentationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserRepresentationBuilder toBuilder() =>
      UserRepresentationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRepresentation &&
        id == other.id &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        emailVerified == other.emailVerified &&
        attributes == other.attributes &&
        userProfileMetadata == other.userProfileMetadata &&
        self == other.self &&
        origin == other.origin &&
        createdTimestamp == other.createdTimestamp &&
        enabled == other.enabled &&
        totp == other.totp &&
        federationLink == other.federationLink &&
        serviceAccountClientId == other.serviceAccountClientId &&
        credentials == other.credentials &&
        disableableCredentialTypes == other.disableableCredentialTypes &&
        requiredActions == other.requiredActions &&
        federatedIdentities == other.federatedIdentities &&
        realmRoles == other.realmRoles &&
        clientRoles == other.clientRoles &&
        clientConsents == other.clientConsents &&
        notBefore == other.notBefore &&
        applicationRoles == other.applicationRoles &&
        socialLinks == other.socialLinks &&
        groups == other.groups &&
        access == other.access;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, emailVerified.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, userProfileMetadata.hashCode);
    _$hash = $jc(_$hash, self.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, createdTimestamp.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, totp.hashCode);
    _$hash = $jc(_$hash, federationLink.hashCode);
    _$hash = $jc(_$hash, serviceAccountClientId.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, disableableCredentialTypes.hashCode);
    _$hash = $jc(_$hash, requiredActions.hashCode);
    _$hash = $jc(_$hash, federatedIdentities.hashCode);
    _$hash = $jc(_$hash, realmRoles.hashCode);
    _$hash = $jc(_$hash, clientRoles.hashCode);
    _$hash = $jc(_$hash, clientConsents.hashCode);
    _$hash = $jc(_$hash, notBefore.hashCode);
    _$hash = $jc(_$hash, applicationRoles.hashCode);
    _$hash = $jc(_$hash, socialLinks.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRepresentation')
          ..add('id', id)
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('emailVerified', emailVerified)
          ..add('attributes', attributes)
          ..add('userProfileMetadata', userProfileMetadata)
          ..add('self', self)
          ..add('origin', origin)
          ..add('createdTimestamp', createdTimestamp)
          ..add('enabled', enabled)
          ..add('totp', totp)
          ..add('federationLink', federationLink)
          ..add('serviceAccountClientId', serviceAccountClientId)
          ..add('credentials', credentials)
          ..add('disableableCredentialTypes', disableableCredentialTypes)
          ..add('requiredActions', requiredActions)
          ..add('federatedIdentities', federatedIdentities)
          ..add('realmRoles', realmRoles)
          ..add('clientRoles', clientRoles)
          ..add('clientConsents', clientConsents)
          ..add('notBefore', notBefore)
          ..add('applicationRoles', applicationRoles)
          ..add('socialLinks', socialLinks)
          ..add('groups', groups)
          ..add('access', access))
        .toString();
  }
}

class UserRepresentationBuilder
    implements Builder<UserRepresentation, UserRepresentationBuilder> {
  _$UserRepresentation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _emailVerified;
  bool? get emailVerified => _$this._emailVerified;
  set emailVerified(bool? emailVerified) =>
      _$this._emailVerified = emailVerified;

  MapBuilder<String, BuiltList<String>>? _attributes;
  MapBuilder<String, BuiltList<String>> get attributes =>
      _$this._attributes ??= MapBuilder<String, BuiltList<String>>();
  set attributes(MapBuilder<String, BuiltList<String>>? attributes) =>
      _$this._attributes = attributes;

  UserProfileMetadataBuilder? _userProfileMetadata;
  UserProfileMetadataBuilder get userProfileMetadata =>
      _$this._userProfileMetadata ??= UserProfileMetadataBuilder();
  set userProfileMetadata(UserProfileMetadataBuilder? userProfileMetadata) =>
      _$this._userProfileMetadata = userProfileMetadata;

  String? _self;
  String? get self => _$this._self;
  set self(String? self) => _$this._self = self;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  int? _createdTimestamp;
  int? get createdTimestamp => _$this._createdTimestamp;
  set createdTimestamp(int? createdTimestamp) =>
      _$this._createdTimestamp = createdTimestamp;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _totp;
  bool? get totp => _$this._totp;
  set totp(bool? totp) => _$this._totp = totp;

  String? _federationLink;
  String? get federationLink => _$this._federationLink;
  set federationLink(String? federationLink) =>
      _$this._federationLink = federationLink;

  String? _serviceAccountClientId;
  String? get serviceAccountClientId => _$this._serviceAccountClientId;
  set serviceAccountClientId(String? serviceAccountClientId) =>
      _$this._serviceAccountClientId = serviceAccountClientId;

  ListBuilder<CredentialRepresentation>? _credentials;
  ListBuilder<CredentialRepresentation> get credentials =>
      _$this._credentials ??= ListBuilder<CredentialRepresentation>();
  set credentials(ListBuilder<CredentialRepresentation>? credentials) =>
      _$this._credentials = credentials;

  SetBuilder<String>? _disableableCredentialTypes;
  SetBuilder<String> get disableableCredentialTypes =>
      _$this._disableableCredentialTypes ??= SetBuilder<String>();
  set disableableCredentialTypes(
    SetBuilder<String>? disableableCredentialTypes,
  ) => _$this._disableableCredentialTypes = disableableCredentialTypes;

  ListBuilder<String>? _requiredActions;
  ListBuilder<String> get requiredActions =>
      _$this._requiredActions ??= ListBuilder<String>();
  set requiredActions(ListBuilder<String>? requiredActions) =>
      _$this._requiredActions = requiredActions;

  ListBuilder<FederatedIdentityRepresentation>? _federatedIdentities;
  ListBuilder<FederatedIdentityRepresentation> get federatedIdentities =>
      _$this._federatedIdentities ??=
          ListBuilder<FederatedIdentityRepresentation>();
  set federatedIdentities(
    ListBuilder<FederatedIdentityRepresentation>? federatedIdentities,
  ) => _$this._federatedIdentities = federatedIdentities;

  ListBuilder<String>? _realmRoles;
  ListBuilder<String> get realmRoles =>
      _$this._realmRoles ??= ListBuilder<String>();
  set realmRoles(ListBuilder<String>? realmRoles) =>
      _$this._realmRoles = realmRoles;

  MapBuilder<String, BuiltList<String>>? _clientRoles;
  MapBuilder<String, BuiltList<String>> get clientRoles =>
      _$this._clientRoles ??= MapBuilder<String, BuiltList<String>>();
  set clientRoles(MapBuilder<String, BuiltList<String>>? clientRoles) =>
      _$this._clientRoles = clientRoles;

  ListBuilder<UserConsentRepresentation>? _clientConsents;
  ListBuilder<UserConsentRepresentation> get clientConsents =>
      _$this._clientConsents ??= ListBuilder<UserConsentRepresentation>();
  set clientConsents(ListBuilder<UserConsentRepresentation>? clientConsents) =>
      _$this._clientConsents = clientConsents;

  int? _notBefore;
  int? get notBefore => _$this._notBefore;
  set notBefore(int? notBefore) => _$this._notBefore = notBefore;

  MapBuilder<String, BuiltList<String>>? _applicationRoles;
  MapBuilder<String, BuiltList<String>> get applicationRoles =>
      _$this._applicationRoles ??= MapBuilder<String, BuiltList<String>>();
  set applicationRoles(
    MapBuilder<String, BuiltList<String>>? applicationRoles,
  ) => _$this._applicationRoles = applicationRoles;

  ListBuilder<SocialLinkRepresentation>? _socialLinks;
  ListBuilder<SocialLinkRepresentation> get socialLinks =>
      _$this._socialLinks ??= ListBuilder<SocialLinkRepresentation>();
  set socialLinks(ListBuilder<SocialLinkRepresentation>? socialLinks) =>
      _$this._socialLinks = socialLinks;

  ListBuilder<String>? _groups;
  ListBuilder<String> get groups => _$this._groups ??= ListBuilder<String>();
  set groups(ListBuilder<String>? groups) => _$this._groups = groups;

  MapBuilder<String, bool>? _access;
  MapBuilder<String, bool> get access =>
      _$this._access ??= MapBuilder<String, bool>();
  set access(MapBuilder<String, bool>? access) => _$this._access = access;

  UserRepresentationBuilder() {
    UserRepresentation._defaults(this);
  }

  UserRepresentationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _emailVerified = $v.emailVerified;
      _attributes = $v.attributes?.toBuilder();
      _userProfileMetadata = $v.userProfileMetadata?.toBuilder();
      _self = $v.self;
      _origin = $v.origin;
      _createdTimestamp = $v.createdTimestamp;
      _enabled = $v.enabled;
      _totp = $v.totp;
      _federationLink = $v.federationLink;
      _serviceAccountClientId = $v.serviceAccountClientId;
      _credentials = $v.credentials?.toBuilder();
      _disableableCredentialTypes = $v.disableableCredentialTypes?.toBuilder();
      _requiredActions = $v.requiredActions?.toBuilder();
      _federatedIdentities = $v.federatedIdentities?.toBuilder();
      _realmRoles = $v.realmRoles?.toBuilder();
      _clientRoles = $v.clientRoles?.toBuilder();
      _clientConsents = $v.clientConsents?.toBuilder();
      _notBefore = $v.notBefore;
      _applicationRoles = $v.applicationRoles?.toBuilder();
      _socialLinks = $v.socialLinks?.toBuilder();
      _groups = $v.groups?.toBuilder();
      _access = $v.access?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRepresentation other) {
    _$v = other as _$UserRepresentation;
  }

  @override
  void update(void Function(UserRepresentationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRepresentation build() => _build();

  _$UserRepresentation _build() {
    _$UserRepresentation _$result;
    try {
      _$result =
          _$v ??
          _$UserRepresentation._(
            id: id,
            username: username,
            firstName: firstName,
            lastName: lastName,
            email: email,
            emailVerified: emailVerified,
            attributes: _attributes?.build(),
            userProfileMetadata: _userProfileMetadata?.build(),
            self: self,
            origin: origin,
            createdTimestamp: createdTimestamp,
            enabled: enabled,
            totp: totp,
            federationLink: federationLink,
            serviceAccountClientId: serviceAccountClientId,
            credentials: _credentials?.build(),
            disableableCredentialTypes: _disableableCredentialTypes?.build(),
            requiredActions: _requiredActions?.build(),
            federatedIdentities: _federatedIdentities?.build(),
            realmRoles: _realmRoles?.build(),
            clientRoles: _clientRoles?.build(),
            clientConsents: _clientConsents?.build(),
            notBefore: notBefore,
            applicationRoles: _applicationRoles?.build(),
            socialLinks: _socialLinks?.build(),
            groups: _groups?.build(),
            access: _access?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'userProfileMetadata';
        _userProfileMetadata?.build();

        _$failedField = 'credentials';
        _credentials?.build();
        _$failedField = 'disableableCredentialTypes';
        _disableableCredentialTypes?.build();
        _$failedField = 'requiredActions';
        _requiredActions?.build();
        _$failedField = 'federatedIdentities';
        _federatedIdentities?.build();
        _$failedField = 'realmRoles';
        _realmRoles?.build();
        _$failedField = 'clientRoles';
        _clientRoles?.build();
        _$failedField = 'clientConsents';
        _clientConsents?.build();

        _$failedField = 'applicationRoles';
        _applicationRoles?.build();
        _$failedField = 'socialLinks';
        _socialLinks?.build();
        _$failedField = 'groups';
        _groups?.build();
        _$failedField = 'access';
        _access?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserRepresentation',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
