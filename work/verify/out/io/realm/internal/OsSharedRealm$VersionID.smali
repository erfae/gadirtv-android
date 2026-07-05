.class public Lio/realm/internal/OsSharedRealm$VersionID;
.super Ljava/lang/Object;
.source "OsSharedRealm.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsSharedRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/realm/internal/OsSharedRealm$VersionID;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIVE:Lio/realm/internal/OsSharedRealm$VersionID;


# instance fields
.field public final index:J

.field public final version:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/realm/internal/OsSharedRealm$VersionID;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2, v1, v2}, Lio/realm/internal/OsSharedRealm$VersionID;-><init>(JJ)V

    sput-object v0, Lio/realm/internal/OsSharedRealm$VersionID;->LIVE:Lio/realm/internal/OsSharedRealm$VersionID;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    .line 3
    iput-wide p3, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    return-void
.end method


# virtual methods
.method public compareTo(Lio/realm/internal/OsSharedRealm$VersionID;)I
    .registers 6

    if-eqz p1, :cond_14

    .line 2
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    iget-wide v2, p1, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    cmp-long p1, v0, v2

    if-gez p1, :cond_12

    const/4 p1, -0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version cannot be compared to a null value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lio/realm/internal/OsSharedRealm$VersionID;

    invoke-virtual {p0, p1}, Lio/realm/internal/OsSharedRealm$VersionID;->compareTo(Lio/realm/internal/OsSharedRealm$VersionID;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 2
    :cond_12
    check-cast p1, Lio/realm/internal/OsSharedRealm$VersionID;

    .line 3
    iget-wide v2, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    iget-wide v4, p1, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_25

    iget-wide v2, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    iget-wide v4, p1, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 8

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-wide v3, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "VersionID{version="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
