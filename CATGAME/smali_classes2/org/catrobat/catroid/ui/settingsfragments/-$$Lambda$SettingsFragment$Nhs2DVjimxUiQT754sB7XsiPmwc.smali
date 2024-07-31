.class public final synthetic Lorg/catrobat/catroid/ui/settingsfragments/-$$Lambda$SettingsFragment$Nhs2DVjimxUiQT754sB7XsiPmwc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/-$$Lambda$SettingsFragment$Nhs2DVjimxUiQT754sB7XsiPmwc;->f$0:Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/-$$Lambda$SettingsFragment$Nhs2DVjimxUiQT754sB7XsiPmwc;->f$0:Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->lambda$setLanguage$1$SettingsFragment(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
