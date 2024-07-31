.class final Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$materialDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$materialDialog$2;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$materialDialog$2;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getColorToApply$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$updateColorChange(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;I)V

    .line 173
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$materialDialog$2;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->dismiss()V

    .line 174
    return-void
.end method
