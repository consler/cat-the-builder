.class Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$2;
.super Ljava/lang/Object;
.source "LegoSensorPortConfigDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;)Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

.field final synthetic val$listener:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    .line 136
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$2;->this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$2;->val$listener:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 139
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    .line 140
    .local v0, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 141
    .local v1, "selectedPort":I
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$2;->this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->access$000(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;)Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;->sensor:Ljava/lang/Enum;

    .line 142
    .local v2, "selectedSensor":Ljava/lang/Enum;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$2;->val$listener:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;

    invoke-interface {v3, p1, v1, v2}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;->onPositiveButtonClick(Landroid/content/DialogInterface;ILjava/lang/Enum;)V

    .line 143
    return-void
.end method
