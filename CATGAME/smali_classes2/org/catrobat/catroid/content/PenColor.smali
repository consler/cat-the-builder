.class public Lorg/catrobat/catroid/content/PenColor;
.super Ljava/lang/Object;
.source "PenColor.java"


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/catrobat/catroid/content/PenColor;->r:F

    .line 34
    iput p2, p0, Lorg/catrobat/catroid/content/PenColor;->g:F

    .line 35
    iput p3, p0, Lorg/catrobat/catroid/content/PenColor;->b:F

    .line 36
    iput p4, p0, Lorg/catrobat/catroid/content/PenColor;->a:F

    .line 37
    return-void
.end method
