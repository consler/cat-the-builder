.class public interface abstract Lorg/catrobat/catroid/web/ScratchDataFetcher;
.super Ljava/lang/Object;
.source "ScratchDataFetcher.java"


# virtual methods
.method public abstract fetchDefaultScratchPrograms()Lorg/catrobat/catroid/common/ScratchSearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract fetchScratchProgramDetails(J)Lorg/catrobat/catroid/common/ScratchProgramData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;,
            Lorg/catrobat/catroid/web/WebScratchProgramException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract scratchSearch(Ljava/lang/String;II)Lorg/catrobat/catroid/common/ScratchSearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method
