.class Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$2;
.super Ljava/lang/Object;
.source "RaspberryPiSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;

.field final synthetic val$host:Landroid/preference/EditTextPreference;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;Landroid/preference/EditTextPreference;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;

    .line 82
    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$2;->this$0:Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$2;->val$host:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment$2;->val$host:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
