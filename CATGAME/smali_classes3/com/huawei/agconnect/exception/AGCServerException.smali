.class public Lcom/huawei/agconnect/exception/AGCServerException;
.super Lcom/huawei/agconnect/exception/AGCException;


# static fields
.field public static final ACCESS_TOKEN_EXPIRED:I = 0xc401002

.field public static final AUTHENTICATION_FAILED:I = 0x193

.field public static final AUTHENTICATION_INVALID:I = 0x190

.field public static final CLIENT_TOKEN_EXPIRED:I = 0xc401001

.field public static final FETCH_THROTTLED:I = 0x1

.field public static final NO_USER_LOGIN:I = 0x3

.field public static final OK:I = 0xc8

.field public static final SERVER_NOT_AVAILABLE:I = 0x1f7

.field public static final SERVER_RSP_INVALID:I = 0x2

.field public static final TOKEN_INVALID:I = 0x191

.field public static final UNKNOW_EXCEPTION:I = 0x1f4


# instance fields
.field private retCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/agconnect/exception/AGCException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/agconnect/exception/AGCServerException;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/agconnect/exception/AGCServerException;->retCode:I

    return-void
.end method


# virtual methods
.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/huawei/agconnect/exception/AGCServerException;->retCode:I

    return v0
.end method
