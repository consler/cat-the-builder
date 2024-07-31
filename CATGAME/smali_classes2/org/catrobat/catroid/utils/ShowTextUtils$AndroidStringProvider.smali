.class public Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;
.super Ljava/lang/Object;
.source "ShowTextUtils.java"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/utils/ShowTextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidStringProvider"
.end annotation


# instance fields
.field private final falseString:Ljava/lang/String;

.field private final trueString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const v0, 0x7f1204b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;->trueString:Ljava/lang/String;

    .line 151
    const v0, 0x7f12036a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;->falseString:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public getTrueOrFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;->trueString:Ljava/lang/String;

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;->falseString:Ljava/lang/String;

    return-object v0
.end method
