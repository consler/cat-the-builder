.class public final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
.super Ljava/lang/Enum;
.source "NXTError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum AppendNotPossible:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum BadArguments:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum BadIO:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum BufferFull:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum ChannelBusy:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum CommunicationBusError:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum DataOutOfRange:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum EndOfFile:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum EndOfFileExpected:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum FileAlreadyExists:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum FileBusy:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum FileIsFull:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum FileNotFound:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum HandleAlreadyClosed:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum I2CTimeOut:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum IllegalFileName:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum IllegalHandle:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum IllegalSize:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum InsanePacket:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum InvalidChannel:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum InvalidField:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum InvalidMailboxQueue:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field private static final LOOKUP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MailboxQueueEmpty:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum ModuleNotFound:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum NoActiveProgram:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum NoLinearSpace:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum NoMoreFiles:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum NoMoreHandles:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum NoSpace:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum NoWriteBuffers:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum NotALinearFile:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum OutOfBoundary:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum OutOfMemory:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum PendingCommunication:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum RequestFailed:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum UndefinedFileError:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum UnknownCommand:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum UnknownErrorCode:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

.field public static final enum WrongNumberOfBytes:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;


# instance fields
.field private final errorCodeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 48
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "WrongNumberOfBytes"

    const/4 v2, 0x0

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->WrongNumberOfBytes:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "UnknownErrorCode"

    const/4 v3, 0x1

    const/16 v4, 0x79

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->UnknownErrorCode:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "I2CTimeOut"

    const/4 v4, 0x2

    const/16 v5, 0x80

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->I2CTimeOut:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "NoMoreHandles"

    const/4 v5, 0x3

    const/16 v6, 0x81

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoMoreHandles:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "NoSpace"

    const/4 v6, 0x4

    const/16 v7, 0x82

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoSpace:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "NoMoreFiles"

    const/4 v7, 0x5

    const/16 v8, 0x83

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoMoreFiles:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "EndOfFileExpected"

    const/4 v8, 0x6

    const/16 v9, 0x84

    invoke-direct {v0, v1, v8, v9}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->EndOfFileExpected:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "EndOfFile"

    const/4 v9, 0x7

    const/16 v10, 0x85

    invoke-direct {v0, v1, v9, v10}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->EndOfFile:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "NotALinearFile"

    const/16 v10, 0x8

    const/16 v11, 0x86

    invoke-direct {v0, v1, v10, v11}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NotALinearFile:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "FileNotFound"

    const/16 v11, 0x9

    const/16 v12, 0x87

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->FileNotFound:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 50
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "HandleAlreadyClosed"

    const/16 v12, 0xa

    const/16 v13, 0x88

    invoke-direct {v0, v1, v12, v13}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->HandleAlreadyClosed:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "NoLinearSpace"

    const/16 v13, 0xb

    const/16 v14, 0x89

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoLinearSpace:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "UndefinedFileError"

    const/16 v14, 0xc

    const/16 v15, 0x8a

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->UndefinedFileError:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "FileBusy"

    const/16 v15, 0xd

    const/16 v14, 0x8b

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->FileBusy:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 51
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "NoWriteBuffers"

    const/16 v14, 0xe

    const/16 v15, 0x8c

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoWriteBuffers:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "AppendNotPossible"

    const/16 v15, 0xf

    const/16 v14, 0x8d

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->AppendNotPossible:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "FileIsFull"

    const/16 v14, 0x10

    const/16 v15, 0x8e

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->FileIsFull:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "FileAlreadyExists"

    const/16 v15, 0x11

    const/16 v14, 0x8f

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->FileAlreadyExists:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 52
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "ModuleNotFound"

    const/16 v14, 0x12

    const/16 v15, 0x90

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->ModuleNotFound:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "OutOfBoundary"

    const/16 v15, 0x13

    const/16 v14, 0x91

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->OutOfBoundary:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "IllegalFileName"

    const/16 v14, 0x14

    const/16 v15, 0x92

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->IllegalFileName:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "IllegalHandle"

    const/16 v15, 0x15

    const/16 v14, 0x93

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->IllegalHandle:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "PendingCommunication"

    const/16 v14, 0x16

    const/16 v15, 0x20

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->PendingCommunication:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "MailboxQueueEmpty"

    const/16 v14, 0x17

    const/16 v13, 0x40

    invoke-direct {v0, v1, v14, v13}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->MailboxQueueEmpty:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "RequestFailed"

    const/16 v13, 0x18

    const/16 v14, 0xbd

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->RequestFailed:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "UnknownCommand"

    const/16 v13, 0x19

    const/16 v14, 0xbe

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->UnknownCommand:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 54
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "InsanePacket"

    const/16 v13, 0x1a

    const/16 v14, 0xbf

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->InsanePacket:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "DataOutOfRange"

    const/16 v13, 0x1b

    const/16 v14, 0xc0

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->DataOutOfRange:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "CommunicationBusError"

    const/16 v13, 0x1c

    const/16 v14, 0xdd

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->CommunicationBusError:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "BufferFull"

    const/16 v13, 0x1d

    const/16 v14, 0xde

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->BufferFull:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 55
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "InvalidChannel"

    const/16 v13, 0x1e

    const/16 v14, 0xdf

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->InvalidChannel:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "ChannelBusy"

    const/16 v13, 0x1f

    const/16 v14, 0xe0

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->ChannelBusy:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "NoActiveProgram"

    const/16 v13, 0xec

    invoke-direct {v0, v1, v15, v13}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoActiveProgram:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "IllegalSize"

    const/16 v13, 0x21

    const/16 v14, 0xed

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->IllegalSize:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 56
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "InvalidMailboxQueue"

    const/16 v13, 0x22

    const/16 v14, 0xee

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->InvalidMailboxQueue:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "InvalidField"

    const/16 v13, 0x23

    const/16 v14, 0xef

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->InvalidField:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "BadIO"

    const/16 v13, 0x24

    const/16 v14, 0xf0

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->BadIO:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "OutOfMemory"

    const/16 v13, 0x25

    const/16 v14, 0xfb

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->OutOfMemory:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const-string v1, "BadArguments"

    const/16 v13, 0x26

    const/16 v14, 0xff

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->BadArguments:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 47
    const/16 v1, 0x27

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    sget-object v13, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->WrongNumberOfBytes:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v13, v1, v2

    sget-object v13, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->UnknownErrorCode:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v13, v1, v3

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->I2CTimeOut:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoMoreHandles:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v5

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoSpace:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v6

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoMoreFiles:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v7

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->EndOfFileExpected:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v8

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->EndOfFile:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v9

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NotALinearFile:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v10

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->FileNotFound:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v11

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->HandleAlreadyClosed:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v12

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoLinearSpace:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0xb

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->UndefinedFileError:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0xc

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->FileBusy:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoWriteBuffers:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->AppendNotPossible:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0xf

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->FileIsFull:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x10

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->FileAlreadyExists:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x11

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->ModuleNotFound:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x12

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->OutOfBoundary:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x13

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->IllegalFileName:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x14

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->IllegalHandle:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x15

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->PendingCommunication:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x16

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->MailboxQueueEmpty:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x17

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->RequestFailed:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x18

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->UnknownCommand:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x19

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->InsanePacket:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->DataOutOfRange:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->CommunicationBusError:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->BufferFull:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->InvalidChannel:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->ChannelBusy:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->NoActiveProgram:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    aput-object v3, v1, v15

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->IllegalSize:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x21

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->InvalidMailboxQueue:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x22

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->InvalidField:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x23

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->BadIO:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x24

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->OutOfMemory:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    const/16 v4, 0x25

    aput-object v3, v1, v4

    const/16 v3, 0x26

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->LOOKUP:Landroid/util/SparseArray;

    .line 61
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 62
    .local v3, "c":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->LOOKUP:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->errorCodeValue:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    .end local v3    # "c":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCodeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->errorCodeValue:I

    .line 67
    return-void
.end method

.method public static getTypeByValue(B)Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
    .locals 2
    .param p0, "value"    # B

    .line 74
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->LOOKUP:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
    .locals 1

    .line 47
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 70
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->errorCodeValue:I

    int-to-byte v0, v0

    return v0
.end method
