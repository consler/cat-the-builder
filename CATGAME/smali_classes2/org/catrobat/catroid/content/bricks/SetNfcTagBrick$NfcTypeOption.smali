.class Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;
.super Ljava/lang/Object;
.source "SetNfcTagBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcTypeOption"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private nfcTagNdefType:I

.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nfcTagNdefType"    # I

    .line 123
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;->this$0:Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;->name:Ljava/lang/String;

    .line 125
    iput p3, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;->nfcTagNdefType:I

    .line 126
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNfcTagNdefType()I
    .locals 1

    .line 139
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;->nfcTagNdefType:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;->name:Ljava/lang/String;

    .line 136
    return-void
.end method
