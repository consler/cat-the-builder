.class public Lorg/catrobat/catroid/ui/BrickLayout$LineData;
.super Ljava/lang/Object;
.source "BrickLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/BrickLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LineData"
.end annotation


# instance fields
.field public allowableTextFieldWidth:I

.field public elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/catrobat/catroid/ui/BrickLayout$ElementData;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field public numberOfTextFields:I

.field final synthetic this$0:Lorg/catrobat/catroid/ui/BrickLayout;

.field public totalTextFieldWidth:I


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/BrickLayout;)V
    .locals 1
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/BrickLayout;

    .line 560
    iput-object p1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->this$0:Lorg/catrobat/catroid/ui/BrickLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    .line 562
    return-void
.end method
