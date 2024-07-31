.class public Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
.super Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
.source "UserDefinedBrickInput.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/catrobat/catroid/formulaeditor/UserData;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "userDefinedBrickInput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;",
        "Ljava/io/Serializable;",
        "Lorg/catrobat/catroid/formulaeditor/UserData<",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        ">;"
    }
.end annotation


# instance fields
.field private initialIndex:I

.field private name:Lorg/catrobat/catroid/userbrick/InputFormulaField;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "input"
    .end annotation
.end field

.field private transient value:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->initialIndex:I

    .line 46
    new-instance v0, Lorg/catrobat/catroid/userbrick/InputFormulaField;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/userbrick/InputFormulaField;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->name:Lorg/catrobat/catroid/userbrick/InputFormulaField;

    .line 47
    sget-object v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->type:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->value:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)V
    .locals 1
    .param p1, "userDefinedBrickInput"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 51
    invoke-direct {p0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->initialIndex:I

    .line 52
    iget-object v0, p1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->name:Lorg/catrobat/catroid/userbrick/InputFormulaField;

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->name:Lorg/catrobat/catroid/userbrick/InputFormulaField;

    .line 53
    sget-object v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->type:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    .line 54
    iget-object v0, p1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->value:Lorg/catrobat/catroid/formulaeditor/Formula;

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->value:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 55
    return-void
.end method


# virtual methods
.method public getDeviceKey()Ljava/util/UUID;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->name:Lorg/catrobat/catroid/userbrick/InputFormulaField;

    invoke-virtual {v0}, Lorg/catrobat/catroid/userbrick/InputFormulaField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getInitialIndex()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->initialIndex:I

    return v0
.end method

.method public getInputFormulaField()Lorg/catrobat/catroid/userbrick/InputFormulaField;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->name:Lorg/catrobat/catroid/userbrick/InputFormulaField;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->name:Lorg/catrobat/catroid/userbrick/InputFormulaField;

    invoke-virtual {v0}, Lorg/catrobat/catroid/userbrick/InputFormulaField;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getValue()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->value:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->value:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->value:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 93
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->value:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 94
    return-void
.end method

.method public setInitialIndex(I)V
    .locals 0
    .param p1, "initialIndex"    # I

    .line 71
    iput p1, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->initialIndex:I

    .line 72
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 64
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->setValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public setValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "value"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 88
    iput-object p1, p0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->value:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 89
    return-void
.end method
