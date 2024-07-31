.class public Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccessibilitySettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final ACCESSIBILITY_PROFILES_SCREEN_KEY:Ljava/lang/String; = "setting_accessibility_profile_screen"

.field static final CUSTOM_PROFILE:Ljava/lang/String; = "accessibility_profile_is_custom"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private preferenceChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->preferenceChanged:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/high16 v0, 0x7f150000

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->addPreferencesFromResource(I)V

    .line 53
    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 77
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->preferenceChanged:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120028

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 83
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 72
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .line 95
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ad7059e

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "setting_accessibility_profile_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a0321

    new-instance v3, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;-><init>()V

    sget-object v4, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->TAG:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->TAG:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 105
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 64
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "s"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->preferenceChanged:Z

    .line 88
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 89
    const-string v2, "accessibility_profile_is_custom"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    return-void
.end method
