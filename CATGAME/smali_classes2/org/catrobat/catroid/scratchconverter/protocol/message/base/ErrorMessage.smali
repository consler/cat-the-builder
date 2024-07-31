.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;
.source "ErrorMessage.java"


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;->message:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;->message:Ljava/lang/String;

    return-object v0
.end method
