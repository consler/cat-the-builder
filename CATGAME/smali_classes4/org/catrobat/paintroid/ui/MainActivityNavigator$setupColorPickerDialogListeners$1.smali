.class public final Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;
.super Ljava/lang/Object;
.source "MainActivityNavigator.kt"

# interfaces
.implements Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/MainActivityNavigator;->setupColorPickerDialogListeners(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
        "colorChanged",
        "",
        "color",
        "",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getCommandFactory$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/command/CommandFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getToolReference$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getMainActivity$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/MainActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-interface {v0, v1, v2, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createColorChangedCommand(Lorg/catrobat/paintroid/tools/ToolReference;Landroid/content/Context;I)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getMainActivity$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v1

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getColorHistory()Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/colorpicker/ColorHistory;->addColor(I)V

    .line 147
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getToolReference$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object p1

    :goto_0
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->CLIP:Lorg/catrobat/paintroid/tools/ToolType;

    if-eq p1, v1, :cond_1

    .line 148
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getMainActivity$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_1

    .line 150
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getMainActivity$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/catrobat/paintroid/MainActivity;->getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommandWithoutUndo(Lorg/catrobat/paintroid/command/Command;)V

    :goto_1
    return-void
.end method
