package com.kylecorry.trail_sense.tools.astronomy.ui.commands

import com.kylecorry.andromeda.core.specifications.Specification
import com.kylecorry.sol.units.Coordinate
import com.kylecorry.trail_sense.tools.astronomy.domain.AstronomyService
import java.time.Instant
import java.time.ZonedDateTime

class CenteredAstroChartDataProvider(
    private val astronomy: AstronomyService = AstronomyService(),
) : IAstroChartDataProvider {

    override fun get(location: Coordinate, time: ZonedDateTime): AstroChartData {
        if (time.toLocalDate() == ZonedDateTime.now().toLocalDate()) {
            val moon = astronomy.getCenteredMoonAltitudes(
                location,
                time
            )
            val sun = astronomy.getCenteredSunAltitudes(
                location,
                time
            )
            return AstroChartData(sun, moon)
        }
        return DailyAstroChartDataProvider().get(location, time)
    }

}