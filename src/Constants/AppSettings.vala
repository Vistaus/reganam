/*-
 * Copyright (c) 2019 Lains
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

namespace Reganam {
    public class AppSettings : Granite.Services.Settings {
        private static AppSettings? instance;
        public int window_x { get; set; }
        public int window_y { get; set; }
        public double metal { get; set; }
        public double crystal { get; set; }
        public double hydrogen { get; set; }
        public double population { get; set; }
        public double metal_mine { get; set; }
        public double crystal_mine { get; set; }
        public double hydrogen_mine { get; set; }
        public double stm_level { get; set; }
        public double stc_level { get; set; }
        public double sth_level { get; set; }
        public double lab_level { get; set; }
        public double sym_level { get; set; }
        public double syc_level { get; set; }
        public double syh_level { get; set; }
        public double ph_level { get; set; }
        public double phs_level { get; set; }
        public string planet_name { get; set; }
        public string planet_type { get; set; }
        public string planet_atm { get; set; }
        public string planet_diameter { get; set; }

        public static unowned AppSettings get_default () {
            if (instance == null) {
                instance = new AppSettings ();
            }
            return instance;
        }

        private AppSettings () {
            base ("com.github.lainsce.reganam");
        }
    }
}
