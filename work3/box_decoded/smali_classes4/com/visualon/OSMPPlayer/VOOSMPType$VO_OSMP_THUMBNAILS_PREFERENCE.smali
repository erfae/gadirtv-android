.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_THUMBNAILS_PREFERENCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

.field public static final enum VO_OSMP_THUMBNAILS_LEFT_TO_RIGHT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

.field public static final enum VO_OSMP_THUMBNAILS_PREFERENCE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1739
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    const-string v1, "VO_OSMP_THUMBNAILS_LEFT_TO_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->VO_OSMP_THUMBNAILS_LEFT_TO_RIGHT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    .line 1742
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    const-string v3, "VO_OSMP_THUMBNAILS_PREFERENCE_MAX"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->VO_OSMP_THUMBNAILS_PREFERENCE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1736
    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    .line 1744
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1748
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1749
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1759
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1761
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 1762
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1765
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "@@@VOOSMPType"

    const-string v0, "VO_OSMP_THUMBNAILS_PREFERENCE does not match. id = 0x%X"

    invoke-static {p0, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->VO_OSMP_THUMBNAILS_PREFERENCE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;
    .locals 1

    .line 1736
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;
    .locals 1

    .line 1736
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1754
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->value:I

    return v0
.end method
