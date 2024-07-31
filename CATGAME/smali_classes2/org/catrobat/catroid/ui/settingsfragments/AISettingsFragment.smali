.class public final Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AISettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;",
        "Landroid/preference/PreferenceFragment;",
        "()V",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->Companion:Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;

    .line 53
    const-class v0, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 43
    const v0, 0x7f150001

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->addPreferencesFromResource(I)V

    .line 44
    nop

    .line 45
    nop

    .line 46
    const-string v0, "setting_ai_screen"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 45
    nop

    .line 47
    .local v0, "aiSensorsPreference":Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 50
    .end local v0    # "aiSensorsPreference":Landroid/preference/PreferenceScreen;
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.preference.PreferenceScreen"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 3

    .line 36
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 37
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
