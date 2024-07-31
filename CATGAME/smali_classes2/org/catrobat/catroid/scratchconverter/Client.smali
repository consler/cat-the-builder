.class public interface abstract Lorg/catrobat/catroid/scratchconverter/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;,
        Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;,
        Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;,
        Lorg/catrobat/catroid/scratchconverter/Client$State;
    }
.end annotation


# static fields
.field public static final INVALID_CLIENT_ID:J = -0x1L


# virtual methods
.method public abstract close()V
.end method

.method public abstract connectAndAuthenticate(Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;)V
.end method

.method public abstract convertProgram(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;ZZ)V
.end method

.method public abstract getNumberOfJobsInProgress()I
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isJobInProgress(J)Z
.end method

.method public abstract onUserCanceledConversion(J)V
.end method

.method public abstract retrieveInfo()V
.end method

.method public abstract setConvertCallback(Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)V
.end method
