.class Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsSetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final domain:Lcom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field
