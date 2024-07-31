.class public final Lorg/catrobat/catroid/utils/PcmToWavConverterKt;
.super Ljava/lang/Object;
.source "PcmToWavConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "CHUNK_ID",
        "",
        "CHUNK_SIZE",
        "",
        "FILE_FORMAT",
        "FIRST_SUBCHUNK_ID",
        "PCM_AUDIO_FORMAT",
        "POSITION_OF_BYTE_ONE",
        "POSITION_OF_BYTE_THREE",
        "POSITION_OF_BYTE_TWO",
        "POSITION_OF_BYTE_ZERO",
        "SECOND_SUBCHUNK_ID",
        "SUB_CHUNK_SIZE",
        "TRANSFER_BUFFER_SIZE",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final CHUNK_ID:Ljava/lang/String; = "RIFF"

.field private static final CHUNK_SIZE:I = 0x24

.field private static final FILE_FORMAT:Ljava/lang/String; = "WAVE"

.field private static final FIRST_SUBCHUNK_ID:Ljava/lang/String; = "fmt "

.field private static final PCM_AUDIO_FORMAT:I = 0x1

.field private static final POSITION_OF_BYTE_ONE:I = 0x8

.field private static final POSITION_OF_BYTE_THREE:I = 0x18

.field private static final POSITION_OF_BYTE_TWO:I = 0x10

.field private static final POSITION_OF_BYTE_ZERO:I = 0x0

.field private static final SECOND_SUBCHUNK_ID:Ljava/lang/String; = "data"

.field private static final SUB_CHUNK_SIZE:I = 0x10

.field private static final TRANSFER_BUFFER_SIZE:I = 0x2800
