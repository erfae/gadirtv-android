.class public final enum Lio/realm/mongodb/sync/SubscriptionSet$State;
.super Ljava/lang/Enum;
.source "SubscriptionSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/mongodb/sync/SubscriptionSet$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum BOOTSTRAPPING:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum COMPLETE:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum ERROR:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum PENDING:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum SUPERSEDED:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum UNCOMMITTED:Lio/realm/mongodb/sync/SubscriptionSet$State;


# instance fields
.field private final value:B


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v1, "UNCOMMITTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/mongodb/sync/SubscriptionSet$State;->UNCOMMITTED:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 2
    new-instance v1, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v3, "PENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lio/realm/mongodb/sync/SubscriptionSet$State;->PENDING:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 3
    new-instance v3, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v5, "BOOTSTRAPPING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lio/realm/mongodb/sync/SubscriptionSet$State;->BOOTSTRAPPING:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 4
    new-instance v5, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v7, "COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lio/realm/mongodb/sync/SubscriptionSet$State;->COMPLETE:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 5
    new-instance v7, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lio/realm/mongodb/sync/SubscriptionSet$State;->ERROR:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 6
    new-instance v9, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v11, "SUPERSEDED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v9, Lio/realm/mongodb/sync/SubscriptionSet$State;->SUPERSEDED:Lio/realm/mongodb/sync/SubscriptionSet$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/realm/mongodb/sync/SubscriptionSet$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lio/realm/mongodb/sync/SubscriptionSet$State;->$VALUES:[Lio/realm/mongodb/sync/SubscriptionSet$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lio/realm/mongodb/sync/SubscriptionSet$State;->value:B

    return-void
.end method

.method public static fromNativeValue(J)Lio/realm/mongodb/sync/SubscriptionSet$State;
    .registers 9

    .line 1
    invoke-static {}, Lio/realm/mongodb/sync/SubscriptionSet$State;->values()[Lio/realm/mongodb/sync/SubscriptionSet$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 2
    iget-byte v4, v3, Lio/realm/mongodb/sync/SubscriptionSet$State;->value:B

    int-to-long v4, v4

    cmp-long v6, v4, p0

    if-nez v6, :cond_12

    return-object v3

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown SubscriptionSetState code: "

    .line 4
    invoke-static {v1, p0, p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/mongodb/sync/SubscriptionSet$State;
    .registers 2

    const-class v0, Lio/realm/mongodb/sync/SubscriptionSet$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/mongodb/sync/SubscriptionSet$State;

    return-object p0
.end method

.method public static values()[Lio/realm/mongodb/sync/SubscriptionSet$State;
    .registers 1

    sget-object v0, Lio/realm/mongodb/sync/SubscriptionSet$State;->$VALUES:[Lio/realm/mongodb/sync/SubscriptionSet$State;

    invoke-virtual {v0}, [Lio/realm/mongodb/sync/SubscriptionSet$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/mongodb/sync/SubscriptionSet$State;

    return-object v0
.end method
