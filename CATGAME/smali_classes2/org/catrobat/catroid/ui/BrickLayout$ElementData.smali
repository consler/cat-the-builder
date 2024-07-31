.class public Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
.super Ljava/lang/Object;
.source "BrickLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/BrickLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ElementData"
.end annotation


# instance fields
.field public editText:Z

.field public height:I

.field public posX:I

.field public posY:I

.field final synthetic this$0:Lorg/catrobat/catroid/ui/BrickLayout;

.field public view:Landroid/view/View;

.field public width:I


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/BrickLayout;Landroid/view/View;IIII)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "posX"    # I
    .param p4, "posY"    # I
    .param p5, "childWidth"    # I
    .param p6, "childHeight"    # I

    .line 573
    iput-object p1, p0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->this$0:Lorg/catrobat/catroid/ui/BrickLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput p3, p0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posX:I

    .line 575
    iput p4, p0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posY:I

    .line 576
    iput p6, p0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->height:I

    .line 577
    iput p5, p0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->width:I

    .line 578
    iput-object p2, p0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    .line 579
    return-void
.end method
