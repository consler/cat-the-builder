.class Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$1;
.super Ljava/lang/Object;
.source "LegoSensorPortConfigDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    .line 127
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "selectedPort"    # I

    .line 130
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    return-void
.end method
