.class final enum Lcom/verimatrix/vdc/MonitorRegistration$RegState;
.super Ljava/lang/Enum;
.source "MonitorRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RegState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/MonitorRegistration$RegState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/MonitorRegistration$RegState;

.field public static final enum BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

.field public static final enum BIND_DEVICE_INIT_IN_PROGRESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

.field public static final enum BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

.field public static final enum NOT_REGISTERED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

.field public static final enum REGISTRATION_FAILURE:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

.field public static final enum REGISTRATION_IN_PROGRESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

.field public static final enum REGISTRATION_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const-string v1, "NOT_REGISTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->NOT_REGISTERED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 23
    new-instance v1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const-string v3, "REGISTRATION_FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->REGISTRATION_FAILURE:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 24
    new-instance v3, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const-string v5, "REGISTRATION_IN_PROGRESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->REGISTRATION_IN_PROGRESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 25
    new-instance v5, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const-string v7, "REGISTRATION_SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->REGISTRATION_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 26
    new-instance v7, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const-string v9, "BIND_DEVICE_INIT_IN_PROGRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_INIT_IN_PROGRESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 27
    new-instance v9, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const-string v11, "BIND_DEVICE_FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 28
    new-instance v11, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const-string v13, "BIND_DIVCE_SUCCESS"

    const/4 v14, 0x6

    const/16 v15, 0x8

    invoke-direct {v11, v13, v14, v15}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 20
    sput-object v13, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->$VALUES:[Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;
    .locals 1

    .line 20
    const-class v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/MonitorRegistration$RegState;
    .locals 1

    .line 20
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->$VALUES:[Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/MonitorRegistration$RegState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->value:I

    return v0
.end method
