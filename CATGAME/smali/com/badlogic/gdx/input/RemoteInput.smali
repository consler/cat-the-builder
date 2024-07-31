.class public Lcom/badlogic/gdx/input/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/badlogic/gdx/Input;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;,
        Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;,
        Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;,
        Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;
    }
.end annotation


# static fields
.field public static DEFAULT_PORT:I = 0x0

.field private static final MAX_TOUCHES:I = 0x14


# instance fields
.field private accel:[F

.field private compass:[F

.field private connected:Z

.field deltaX:[I

.field deltaY:[I

.field private gyrate:[F

.field public final ips:[Ljava/lang/String;

.field isTouched:[Z

.field justPressedKeys:[Z

.field justTouched:Z

.field keyCount:I

.field keyJustPressed:Z

.field keys:[Z

.field private listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

.field private multiTouch:Z

.field private final port:I

.field processor:Lcom/badlogic/gdx/InputProcessor;

.field private remoteHeight:F

.field private remoteWidth:F

.field private serverSocket:Ljava/net/ServerSocket;

.field touchX:[I

.field touchY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    const/16 v0, 0x1ffe

    sput v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 215
    sget v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(I)V

    .line 216
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V

    .line 224
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V
    .locals 5
    .param p1, "port"    # I
    .param p2, "listener"    # Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    .line 193
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    .line 194
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    .line 196
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    .line 197
    iput v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    .line 198
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->connected:Z

    .line 200
    iput v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 201
    const/16 v1, 0x100

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    .line 202
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    .line 203
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    .line 204
    const/16 v1, 0x14

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    .line 205
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    .line 206
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    .line 207
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    .line 208
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    .line 209
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 227
    iput-object p2, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    .line 229
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->port:I

    .line 230
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->serverSocket:Ljava/net/ServerSocket;

    .line 231
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 235
    .local v1, "allByName":[Ljava/net/InetAddress;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    .line 236
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v1    # "allByName":[Ljava/net/InetAddress;
    .end local v2    # "i":I
    :cond_0
    nop

    .line 242
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open listening socket at port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    .line 219
    sget v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V

    .line 220
    return-void
.end method


# virtual methods
.method public cancelVibrate()V
    .locals 0

    .line 473
    return-void
.end method

.method public getAccelerometerX()F
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getCurrentEventTime()J
    .locals 2

    .line 590
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeltaX()I
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaX(I)I
    .locals 1
    .param p1, "pointer"    # I

    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDeltaY()I
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaY(I)I
    .locals 1
    .param p1, "pointer"    # I

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->deltaY:[I

    aget v0, v0, p1

    return v0
.end method

.method public getGyroscopeX()F
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeY()F
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeZ()F
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getIPs()[Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getMaxPointers()I
    .locals 1

    .line 368
    const/16 v0, 0x14

    return v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .locals 1

    .line 550
    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPressure()F
    .locals 1

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/RemoteInput;->getPressure(I)F

    move-result v0

    return v0
.end method

.method public getPressure(I)F
    .locals 1
    .param p1, "pointer"    # I

    .line 413
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/input/RemoteInput;->isTouched(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRoll()F
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationMatrix([F)V
    .locals 0
    .param p1, "matrix"    # [F

    .line 597
    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/Input$TextInputListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "hint"    # Ljava/lang/String;

    .line 453
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getInput()Lcom/badlogic/gdx/Input;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public getX()I
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getX(I)I
    .locals 1
    .param p1, "pointer"    # I

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getY()I
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY(I)I
    .locals 1
    .param p1, "pointer"    # I

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    aget v0, v0, p1

    return v0
.end method

.method public isButtonJustPressed(I)Z
    .locals 1
    .param p1, "button"    # I

    .line 426
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isButtonPressed(I)Z
    .locals 4
    .param p1, "button"    # I

    .line 418
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 419
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 420
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 419
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public isCatchBackKey()Z
    .locals 1

    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public isCatchKey(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public isCatchMenuKey()Z
    .locals 1

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->connected:Z

    return v0
.end method

.method public isCursorCatched()Z
    .locals 1

    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyJustPressed(I)Z
    .locals 1
    .param p1, "key"    # I

    .line 442
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 443
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    return v0

    .line 445
    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 446
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPressed(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 431
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 432
    iget v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 434
    :cond_1
    if-ltz p1, :cond_3

    const/16 v1, 0xff

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 435
    :cond_3
    :goto_0
    return v0
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .locals 2
    .param p1, "peripheral"    # Lcom/badlogic/gdx/Input$Peripheral;

    .line 537
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 538
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_1

    return v1

    .line 539
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    return v0

    .line 540
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isTouched()Z
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isTouched(I)Z
    .locals 1
    .param p1, "pointer"    # I

    .line 403
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public justTouched()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    return v0
.end method

.method public run()V
    .locals 10

    .line 248
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->connected:Z

    .line 249
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    invoke-interface {v1}, Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;->onDisconnected()V

    .line 251
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listening, port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x0

    .line 254
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    move-object v1, v2

    .line 255
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 256
    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 257
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->connected:Z

    .line 258
    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->listener:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    invoke-interface {v3}, Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;->onConnected()V

    .line 260
    :cond_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 261
    .local v3, "in":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    .line 263
    :goto_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 264
    .local v4, "event":I
    const/4 v5, 0x0

    .line 265
    .local v5, "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    const/4 v6, 0x0

    .line 266
    .local v6, "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    const/4 v7, 0x2

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 282
    :pswitch_0
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v0

    .line 283
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v2

    .line 284
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->gyrate:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v7

    .line 285
    goto/16 :goto_2

    .line 278
    :pswitch_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    .line 279
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    .line 280
    goto/16 :goto_2

    .line 273
    :pswitch_2
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v0

    .line 274
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v2

    .line 275
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v7

    .line 276
    goto/16 :goto_2

    .line 268
    :pswitch_3
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v0

    .line 269
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v2

    .line 270
    iget-object v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v8, v7

    .line 271
    goto/16 :goto_2

    .line 316
    :pswitch_4
    new-instance v8, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v8, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v6, v8

    .line 317
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v8, v9

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 318
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v8, v9

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 319
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 320
    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    goto/16 :goto_2

    .line 309
    :pswitch_5
    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v6, v7

    .line 310
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 311
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 312
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 313
    iput v2, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    .line 314
    goto :goto_2

    .line 302
    :pswitch_6
    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v6, v7

    .line 303
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 304
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 305
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 306
    iput v0, v6, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    .line 307
    goto :goto_2

    .line 297
    :pswitch_7
    new-instance v8, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v8, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v5, v8

    .line 298
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readChar()C

    move-result v8

    iput-char v8, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyChar:C

    .line 299
    iput v7, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    .line 300
    goto :goto_2

    .line 292
    :pswitch_8
    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v5, v7

    .line 293
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    .line 294
    iput v2, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    .line 295
    goto :goto_2

    .line 287
    :pswitch_9
    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    move-object v5, v7

    .line 288
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    .line 289
    iput v0, v5, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    .line 290
    nop

    .line 324
    :goto_2
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v8, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;

    invoke-direct {v8, p0, v6, v5}, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;-><init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v4    # "event":I
    .end local v5    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    .end local v6    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    goto/16 :goto_1

    .line 326
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v3    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 328
    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCatchBackKey(Z)V
    .locals 0
    .param p1, "catchBack"    # Z

    .line 493
    return-void
.end method

.method public setCatchKey(IZ)V
    .locals 0
    .param p1, "keycode"    # I
    .param p2, "catchKey"    # Z

    .line 513
    return-void
.end method

.method public setCatchMenuKey(Z)V
    .locals 0
    .param p1, "catchMenu"    # Z

    .line 503
    return-void
.end method

.method public setCursorCatched(Z)V
    .locals 0
    .param p1, "catched"    # Z

    .line 556
    return-void
.end method

.method public setCursorPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 585
    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 0
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .line 522
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 523
    return-void
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 458
    return-void
.end method

.method public vibrate(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .line 463
    return-void
.end method

.method public vibrate([JI)V
    .locals 0
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .line 468
    return-void
.end method
