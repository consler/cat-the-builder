.class public Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "RaspberryPiSettingsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRaspiSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    const v0, 0x7f15000a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    const-string v2, "setting_raspi_bricks"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 104
    .local v0, "isPreferenceEnabled":Ljava/lang/Boolean;
    const v2, 0x7f150009

    invoke-static {p0, v2, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 62
    const v0, 0x7f15000a

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->addPreferencesFromResource(I)V

    .line 69
    const-string v0, "setting_raspi_bricks"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 70
    .local v0, "raspiCheckBoxPreference":Landroid/preference/CheckBoxPreference;
    const-string v1, "setting_raspi_connection_settings_category"

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 71
    .local v1, "rpiConnectionSettings":Landroid/preference/PreferenceCategory;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 73
    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$1;

    invoke-direct {v2, p0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$1;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v2, "setting_raspi_host_preference"

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 81
    .local v2, "host":Landroid/preference/EditTextPreference;
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v3, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$2;

    invoke-direct {v3, p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$2;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;Landroid/preference/EditTextPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    const-string v3, "setting_raspi_port_preference"

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 90
    .local v3, "port":Landroid/preference/EditTextPreference;
    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v4, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$3;

    invoke-direct {v4, p0, v3}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$3;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;Landroid/preference/EditTextPreference;)V

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    .end local v0    # "raspiCheckBoxPreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "rpiConnectionSettings":Landroid/preference/PreferenceCategory;
    .end local v2    # "host":Landroid/preference/EditTextPreference;
    .end local v3    # "port":Landroid/preference/EditTextPreference;
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 55
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
