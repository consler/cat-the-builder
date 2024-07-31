.class public Lorg/catrobat/catroid/scratchconverter/protocol/command/AuthenticateCommand;
.super Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;
.source "AuthenticateCommand.java"


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "clientID"    # J

    .line 28
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->AUTHENTICATE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;-><init>(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;)V

    .line 29
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/command/AuthenticateCommand;->addArgument(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;Ljava/lang/Object;)V

    .line 30
    return-void
.end method
