.class public Lorg/catrobat/catroid/formulaeditor/ExternToken;
.super Ljava/lang/Object;
.source "ExternToken.java"


# instance fields
.field private endIndex:I

.field private startIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/ExternToken;->startIndex:I

    .line 32
    iput p2, p0, Lorg/catrobat/catroid/formulaeditor/ExternToken;->endIndex:I

    .line 33
    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternToken;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/ExternToken;->startIndex:I

    return v0
.end method
