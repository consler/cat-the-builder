.class Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick$RotationStyleOption;
.super Ljava/lang/Object;
.source "SetRotationStyleBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotationStyleOption"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private rotationStyle:I

.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rotationStyle"    # I

    .line 106
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick$RotationStyleOption;->this$0:Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick$RotationStyleOption;->name:Ljava/lang/String;

    .line 108
    iput p3, p0, Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick$RotationStyleOption;->rotationStyle:I

    .line 109
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick$RotationStyleOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method getRotationStyle()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick$RotationStyleOption;->rotationStyle:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick$RotationStyleOption;->name:Ljava/lang/String;

    .line 119
    return-void
.end method
