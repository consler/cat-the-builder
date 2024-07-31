.class Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;
.super Ljava/lang/Object;
.source "ShowTextColorSizeAlignmentBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlignmentStyle"
.end annotation


# instance fields
.field private alignmentStyle:I

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alignmentStyle"    # I

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;->name:Ljava/lang/String;

    .line 214
    iput p2, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;->alignmentStyle:I

    .line 215
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;

    .line 208
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;->alignmentStyle:I

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;->name:Ljava/lang/String;

    .line 225
    return-void
.end method
