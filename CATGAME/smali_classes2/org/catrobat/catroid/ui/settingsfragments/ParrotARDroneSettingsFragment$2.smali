.class Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;
.super Ljava/lang/Object;
.source "ParrotARDroneSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;

.field final synthetic val$dronePreferences:[Ljava/lang/String;

.field final synthetic val$list:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;Landroid/preference/ListPreference;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;

    .line 92
    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;->this$0:Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;->val$list:Landroid/preference/ListPreference;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;->val$dronePreferences:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;->val$list:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "index":I
    iget-object v1, p0, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;->val$dronePreferences:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_f

    aget-object v6, v1, v4

    .line 97
    .local v6, "dronePreference":Ljava/lang/String;
    iget-object v7, p0, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment$2;->this$0:Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;

    invoke-virtual {v7, v6}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    .line 98
    .local v7, "listPreference":Landroid/preference/ListPreference;
    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    sparse-switch v9, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v9, "setting_drone_tilt_angle"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v8, v10

    goto :goto_1

    :sswitch_1
    const-string v9, "setting_drone_altitude_limit"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v8, v3

    goto :goto_1

    :sswitch_2
    const-string v9, "setting_drone_vertical_speed"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v8, v5

    goto :goto_1

    :sswitch_3
    const-string v9, "setting_drone_rotation_speed"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v8, v11

    :goto_1
    if-eqz v8, :cond_d

    const-string v9, "THIRD"

    const-string v12, "SECOND"

    if-eq v8, v5, :cond_9

    if-eq v8, v11, :cond_5

    if-eq v8, v10, :cond_1

    goto :goto_2

    .line 123
    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v5, :cond_3

    .line 124
    :cond_2
    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 126
    :cond_3
    if-eq v0, v11, :cond_4

    if-ne v0, v10, :cond_e

    .line 127
    :cond_4
    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 114
    :cond_5
    if-eqz v0, :cond_6

    if-ne v0, v5, :cond_7

    .line 115
    :cond_6
    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    :cond_7
    if-eq v0, v11, :cond_8

    if-ne v0, v10, :cond_e

    .line 118
    :cond_8
    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_9
    if-eqz v0, :cond_a

    if-ne v0, v5, :cond_b

    .line 106
    :cond_a
    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    :cond_b
    if-eq v0, v11, :cond_c

    if-ne v0, v10, :cond_e

    .line 109
    :cond_c
    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 101
    :cond_d
    const-string v5, "FIRST"

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 102
    nop

    .line 96
    .end local v6    # "dronePreference":Ljava/lang/String;
    .end local v7    # "listPreference":Landroid/preference/ListPreference;
    :cond_e
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 132
    :cond_f
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ba5d924 -> :sswitch_3
        -0x28965b2c -> :sswitch_2
        0x3046c274 -> :sswitch_1
        0x54ebf267 -> :sswitch_0
    .end sparse-switch
.end method
