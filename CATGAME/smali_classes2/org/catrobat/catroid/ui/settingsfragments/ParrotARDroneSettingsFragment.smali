.class public Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "ParrotARDroneSettingsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 64
    const v1, 0x7f150002

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->addPreferencesFromResource(I)V

    .line 71
    const-string v1, "setting_parrot_ar_drone_bricks"

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 72
    .local v1, "droneCheckBoxPreference":Landroid/preference/CheckBoxPreference;
    const-string v2, "setting_drone_category"

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 73
    .local v2, "droneConnectionSettings":Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 75
    const-string v3, "setting_drone_basic_configs"

    const-string v4, "setting_drone_altitude_limit"

    const-string v5, "setting_drone_vertical_speed"

    const-string v6, "setting_drone_rotation_speed"

    const-string v7, "setting_drone_tilt_angle"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "dronePreferences":[Ljava/lang/String;
    new-instance v9, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$1;

    invoke-direct {v9, v0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$1;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v1, v9}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    array-length v9, v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_6

    aget-object v12, v8, v11

    .line 86
    .local v12, "dronePreference":Ljava/lang/String;
    invoke-virtual {v0, v12}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    .line 88
    .local v13, "listPreference":Landroid/preference/ListPreference;
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v10, 0x2

    const/4 v14, 0x1

    sparse-switch v15, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    goto :goto_2

    :sswitch_2
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move v15, v14

    goto :goto_2

    :sswitch_3
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move v15, v10

    goto :goto_2

    :sswitch_4
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x3

    goto :goto_2

    :goto_1
    const/4 v15, -0x1

    :goto_2
    if-eqz v15, :cond_5

    if-eq v15, v14, :cond_4

    if-eq v15, v10, :cond_3

    const/4 v10, 0x3

    if-eq v15, v10, :cond_2

    const/4 v10, 0x4

    if-eq v15, v10, :cond_1

    goto :goto_3

    .line 150
    :cond_1
    const v10, 0x7f03000e

    invoke-virtual {v13, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    goto :goto_3

    .line 146
    :cond_2
    const v10, 0x7f03000d

    invoke-virtual {v13, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 147
    goto :goto_3

    .line 142
    :cond_3
    const v10, 0x7f03000f

    invoke-virtual {v13, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 143
    goto :goto_3

    .line 138
    :cond_4
    const v10, 0x7f03000c

    invoke-virtual {v13, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 139
    goto :goto_3

    .line 90
    :cond_5
    const v10, 0x7f030010

    invoke-virtual {v13, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 91
    move-object v10, v13

    .line 92
    .local v10, "list":Landroid/preference/ListPreference;
    new-instance v14, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;

    invoke-direct {v14, v0, v10, v8}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;Landroid/preference/ListPreference;[Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    nop

    .line 153
    .end local v10    # "list":Landroid/preference/ListPreference;
    :goto_3
    invoke-static {}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->getPreferenceCodes()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 85
    .end local v12    # "dronePreference":Ljava/lang/String;
    .end local v13    # "listPreference":Landroid/preference/ListPreference;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "droneCheckBoxPreference":Landroid/preference/CheckBoxPreference;
    .end local v2    # "droneConnectionSettings":Landroid/preference/PreferenceCategory;
    .end local v8    # "dronePreferences":[Ljava/lang/String;
    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4ba5d924 -> :sswitch_4
        -0x28965b2c -> :sswitch_3
        0x3046c274 -> :sswitch_2
        0x46eadd0a -> :sswitch_1
        0x54ebf267 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 57
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
