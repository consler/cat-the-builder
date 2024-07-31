.class public Lorg/catrobat/catroid/scratchconverter/protocol/command/RetrieveInfoCommand;
.super Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;
.source "RetrieveInfoCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->RETRIEVE_INFO:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;-><init>(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;)V

    .line 29
    return-void
.end method
