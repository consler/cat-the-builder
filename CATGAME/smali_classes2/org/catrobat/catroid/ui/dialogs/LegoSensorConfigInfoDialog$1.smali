.class Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;
.super Ljava/lang/Object;
.source "LegoSensorConfigInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;

.field final synthetic val$disableShowInfoDialog:Landroid/widget/CheckBox;

.field final synthetic val$legoSensorType:I


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;Landroid/widget/CheckBox;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;

    .line 108
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;->val$disableShowInfoDialog:Landroid/widget/CheckBox;

    iput p3, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;->val$legoSensorType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;->val$disableShowInfoDialog:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget v0, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;->val$legoSensorType:I

    if-nez v0, :cond_0

    const-string v0, "settings_mindstorms_nxt_show_sensor_info_box_disabled"

    goto :goto_0

    :cond_0
    const-string v0, "settings_mindstorms_ev3_show_sensor_info_box_disabled"

    .line 116
    .local v0, "preferenceKey":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    .line 117
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    .end local v0    # "preferenceKey":Ljava/lang/String;
    :cond_1
    return-void
.end method
