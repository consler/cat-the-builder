.class public interface abstract Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectAuthCallback"
.end annotation


# virtual methods
.method public abstract onAuthenticationFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
.end method

.method public abstract onConnectionClosed(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
.end method

.method public abstract onConnectionFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
.end method

.method public abstract onSuccess(J)V
.end method
