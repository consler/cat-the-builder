.class Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment$1;
.super Ljava/lang/Object;
.source "Ev3SensorsSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;

.field final synthetic val$ev3ConnectionSettings:Landroid/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment$1;->this$0:Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment$1;->val$ev3ConnectionSettings:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "isChecked"    # Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment$1;->val$ev3ConnectionSettings:Landroid/preference/PreferenceCategory;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method
