.class public final enum Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent$NcgFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

.field public static final enum Begin:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

.field public static final enum Current:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

.field public static final enum End:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1490
    new-instance v0, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    const-string v1, "Begin"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->Begin:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    .line 1491
    new-instance v1, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    const-string v3, "Current"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->Current:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    .line 1492
    new-instance v3, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    const-string v5, "End"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->End:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1489
    sput-object v5, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->$VALUES:[Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1489
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;
    .locals 1

    .line 1489
    const-class v0, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    return-object p0
.end method

.method public static values()[Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;
    .locals 1

    .line 1489
    sget-object v0, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->$VALUES:[Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    invoke-virtual {v0}, [Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    return-object v0
.end method
