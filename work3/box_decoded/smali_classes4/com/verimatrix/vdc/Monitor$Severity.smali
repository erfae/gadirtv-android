.class public final enum Lcom/verimatrix/vdc/Monitor$Severity;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum ALERT:Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum CLEARANCE:Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum CRITICAL:Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum DEBUG:Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum EMERGENCY:Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum INFO:Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

.field public static final enum UNKNOWN:Lcom/verimatrix/vdc/Monitor$Severity;

.field static final UNKNOWN_ID:I = 0x7fffffff

.field public static final enum WARNING:Lcom/verimatrix/vdc/Monitor$Severity;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 668
    new-instance v0, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v1, "EMERGENCY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$Severity;->EMERGENCY:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 669
    new-instance v1, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v3, "ALERT"

    const/4 v4, 0x1

    const/high16 v5, 0x10000

    invoke-direct {v1, v3, v4, v5}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$Severity;->ALERT:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 670
    new-instance v3, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v5, "CRITICAL"

    const/4 v6, 0x2

    const/high16 v7, 0x20000

    invoke-direct {v3, v5, v6, v7}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$Severity;->CRITICAL:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 671
    new-instance v5, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    const/high16 v9, 0x30000

    invoke-direct {v5, v7, v8, v9}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 672
    new-instance v7, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v9, "WARNING"

    const/4 v10, 0x4

    const/high16 v11, 0x40000

    invoke-direct {v7, v9, v10, v11}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$Severity;->WARNING:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 673
    new-instance v9, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v11, "NOTICE"

    const/4 v12, 0x5

    const/high16 v13, 0x50000

    invoke-direct {v9, v11, v12, v13}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 674
    new-instance v11, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v13, "INFO"

    const/4 v14, 0x6

    const/high16 v15, 0x60000

    invoke-direct {v11, v13, v14, v15}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 675
    new-instance v13, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v15, "DEBUG"

    const/4 v14, 0x7

    const/high16 v12, 0x70000

    invoke-direct {v13, v15, v14, v12}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/verimatrix/vdc/Monitor$Severity;->DEBUG:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 676
    new-instance v12, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v15, "CLEARANCE"

    const/16 v14, 0x8

    const/high16 v10, 0x80000

    invoke-direct {v12, v15, v14, v10}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/verimatrix/vdc/Monitor$Severity;->CLEARANCE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 677
    new-instance v10, Lcom/verimatrix/vdc/Monitor$Severity;

    const-string v15, "UNKNOWN"

    const/16 v14, 0x9

    const v8, 0x7fffffff

    invoke-direct {v10, v15, v14, v8}, Lcom/verimatrix/vdc/Monitor$Severity;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/verimatrix/vdc/Monitor$Severity;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$Severity;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/verimatrix/vdc/Monitor$Severity;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 667
    sput-object v8, Lcom/verimatrix/vdc/Monitor$Severity;->$VALUES:[Lcom/verimatrix/vdc/Monitor$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 682
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 683
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$Severity;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;
    .locals 1

    .line 667
    const-class v0, Lcom/verimatrix/vdc/Monitor$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$Severity;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$Severity;
    .locals 1

    .line 667
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Severity;->$VALUES:[Lcom/verimatrix/vdc/Monitor$Severity;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$Severity;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 687
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$Severity;->id:I

    return v0
.end method
