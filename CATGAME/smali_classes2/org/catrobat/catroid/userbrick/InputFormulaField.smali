.class public Lorg/catrobat/catroid/userbrick/InputFormulaField;
.super Ljava/lang/Object;
.source "InputFormulaField.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;


# instance fields
.field input:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/InputFormulaField;->input:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/userbrick/InputFormulaField;->input:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 52
    instance-of v0, p1, Lorg/catrobat/catroid/userbrick/InputFormulaField;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/InputFormulaField;->input:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/userbrick/InputFormulaField;

    iget-object v1, v1, Lorg/catrobat/catroid/userbrick/InputFormulaField;->input:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/InputFormulaField;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/InputFormulaField;->input:Ljava/lang/String;

    return-object v0
.end method
