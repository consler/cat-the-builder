.class Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setHintPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;

    .line 263
    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment$1;->this$0:Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown_hint_list"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    const/4 v0, 0x1

    return v0
.end method
