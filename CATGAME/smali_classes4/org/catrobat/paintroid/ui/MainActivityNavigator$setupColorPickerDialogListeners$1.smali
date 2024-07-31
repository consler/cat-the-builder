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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/MainActivityNavigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .line 131
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getToolReference$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/Tool;->changePaintColor(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getMainActivity$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->setBottomNavigationColor(I)V

    .line 133
    return-void
.end method
