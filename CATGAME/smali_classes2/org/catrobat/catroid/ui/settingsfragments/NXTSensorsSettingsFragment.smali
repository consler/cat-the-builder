.class public Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "NXTSensorsSettingsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 57
    const v0, 0x7f150008

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->addPreferencesFromResource(I)V

    .line 63
    const-string v0, "settings_mindstorms_nxt_bricks_enabled"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 64
    .local v0, "nxtCheckBoxPreference":Landroid/preference/CheckBoxPreference;
    const-string v1, "setting_nxt_category"

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 65
    .local v1, "nxtConnectionSettings":Landroid/preference/PreferenceCategory;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 67
    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment$1;

    invoke-direct {v2, p0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment$1;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->NXT_SENSORS:[Ljava/lang/String;

    .line 75
    .local v2, "sensorPreferences":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 76
    .local v5, "sensorPreference":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 77
    .local v6, "listPreference":Landroid/preference/ListPreference;
    const v7, 0x7f03001a

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 78
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->getSensorCodes()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 75
    .end local v5    # "sensorPreference":Ljava/lang/String;
    .end local v6    # "listPreference":Landroid/preference/ListPreference;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "nxtCheckBoxPreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "nxtConnectionSettings":Landroid/preference/PreferenceCategory;
    .end local v2    # "sensorPreferences":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 48
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
