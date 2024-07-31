.class Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$3;
.super Ljava/lang/Object;
.source "LegoSensorPortConfigDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    .line 151
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$3;->this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$3;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$3;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    return-void
.end method
