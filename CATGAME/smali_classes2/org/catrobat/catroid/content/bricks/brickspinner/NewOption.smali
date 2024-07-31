.class public final Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;
.super Ljava/lang/Object;
.source "NewOption.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;->name:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;->name:Ljava/lang/String;

    .line 44
    return-void
.end method
