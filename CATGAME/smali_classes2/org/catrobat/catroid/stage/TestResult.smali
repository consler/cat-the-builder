.class public Lorg/catrobat/catroid/stage/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# static fields
.field public static final STAGE_ACTIVITY_TEST_FAIL:I = 0x22b8

.field public static final STAGE_ACTIVITY_TEST_SUCCESS:I = 0x1e61

.field public static final TEST_RESULT_MESSAGE:Ljava/lang/String; = "ASSERTION_MESSAGE"


# instance fields
.field private message:Ljava/lang/String;

.field private resultCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/stage/TestResult;->message:Ljava/lang/String;

    .line 37
    iput p2, p0, Lorg/catrobat/catroid/stage/TestResult;->resultCode:I

    .line 38
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/stage/TestResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/catrobat/catroid/stage/TestResult;->resultCode:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/stage/TestResult;->message:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .line 53
    iput p1, p0, Lorg/catrobat/catroid/stage/TestResult;->resultCode:I

    .line 54
    return-void
.end method
